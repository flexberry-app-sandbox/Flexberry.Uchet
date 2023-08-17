﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IIS.Uchet
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET;
    
    
    // *** Start programmer edit section *** (Using statements)

    // *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Рабочее место.
    /// </summary>
    // *** Start programmer edit section *** (РабочееМесто CustomAttributes)

    // *** End programmer edit section *** (РабочееМесто CustomAttributes)
    [AutoAltered()]
    [Caption("Рабочее место")]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("РабочееМестоE", new string[] {
            "ИнвНомер as \'Инв номер\'",
            "Кабинет as \'Кабинет\'",
            "Место as \'Место\'",
            "Филиал as \'Филиал\'",
            "Филиал.Название as \'Название\'"}, Hidden=new string[] {
            "Филиал.Название"})]
    [AssociatedDetailViewAttribute("РабочееМестоE", "Оборудование", "ОборудованиеE", true, "", "Оборудование", true, new string[] {
            ""})]
    [AssociatedDetailViewAttribute("РабочееМестоE", "ПО", "ПОE", true, "", "ПО", true, new string[] {
            ""})]
    [MasterViewDefineAttribute("РабочееМестоE", "Филиал", ICSSoft.STORMNET.LookupTypeEnum.Standard, "", "Название")]
    [View("РабочееМестоL", new string[] {
            "ИнвНомер as \'Инв номер\'",
            "Кабинет as \'Кабинет\'",
            "Место as \'Место\'",
            "Филиал.Название as \'Название\'"})]
    public class РабочееМесто : ICSSoft.STORMNET.DataObject
    {
        
        private string fИнвНомер;
        
        private string fКабинет;
        
        private string fМесто;
        
        private IIS.Uchet.Филиал fФилиал;
        
        private IIS.Uchet.DetailArrayOfОборудование fОборудование;
        
        private IIS.Uchet.DetailArrayOfПО fПО;
        
        // *** Start programmer edit section *** (РабочееМесто CustomMembers)

        // *** End programmer edit section *** (РабочееМесто CustomMembers)

        
        /// <summary>
        /// ИнвНомер.
        /// </summary>
        // *** Start programmer edit section *** (РабочееМесто.ИнвНомер CustomAttributes)

        // *** End programmer edit section *** (РабочееМесто.ИнвНомер CustomAttributes)
        [StrLen(255)]
        public virtual string ИнвНомер
        {
            get
            {
                // *** Start programmer edit section *** (РабочееМесто.ИнвНомер Get start)

                // *** End programmer edit section *** (РабочееМесто.ИнвНомер Get start)
                string result = this.fИнвНомер;
                // *** Start programmer edit section *** (РабочееМесто.ИнвНомер Get end)

                // *** End programmer edit section *** (РабочееМесто.ИнвНомер Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (РабочееМесто.ИнвНомер Set start)

                // *** End programmer edit section *** (РабочееМесто.ИнвНомер Set start)
                this.fИнвНомер = value;
                // *** Start programmer edit section *** (РабочееМесто.ИнвНомер Set end)

                // *** End programmer edit section *** (РабочееМесто.ИнвНомер Set end)
            }
        }
        
        /// <summary>
        /// Кабинет.
        /// </summary>
        // *** Start programmer edit section *** (РабочееМесто.Кабинет CustomAttributes)

        // *** End programmer edit section *** (РабочееМесто.Кабинет CustomAttributes)
        [StrLen(255)]
        public virtual string Кабинет
        {
            get
            {
                // *** Start programmer edit section *** (РабочееМесто.Кабинет Get start)

                // *** End programmer edit section *** (РабочееМесто.Кабинет Get start)
                string result = this.fКабинет;
                // *** Start programmer edit section *** (РабочееМесто.Кабинет Get end)

                // *** End programmer edit section *** (РабочееМесто.Кабинет Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (РабочееМесто.Кабинет Set start)

                // *** End programmer edit section *** (РабочееМесто.Кабинет Set start)
                this.fКабинет = value;
                // *** Start programmer edit section *** (РабочееМесто.Кабинет Set end)

                // *** End programmer edit section *** (РабочееМесто.Кабинет Set end)
            }
        }
        
        /// <summary>
        /// Место.
        /// </summary>
        // *** Start programmer edit section *** (РабочееМесто.Место CustomAttributes)

        // *** End programmer edit section *** (РабочееМесто.Место CustomAttributes)
        [StrLen(255)]
        public virtual string Место
        {
            get
            {
                // *** Start programmer edit section *** (РабочееМесто.Место Get start)

                // *** End programmer edit section *** (РабочееМесто.Место Get start)
                string result = this.fМесто;
                // *** Start programmer edit section *** (РабочееМесто.Место Get end)

                // *** End programmer edit section *** (РабочееМесто.Место Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (РабочееМесто.Место Set start)

                // *** End programmer edit section *** (РабочееМесто.Место Set start)
                this.fМесто = value;
                // *** Start programmer edit section *** (РабочееМесто.Место Set end)

                // *** End programmer edit section *** (РабочееМесто.Место Set end)
            }
        }
        
        /// <summary>
        /// Рабочее место.
        /// </summary>
        // *** Start programmer edit section *** (РабочееМесто.Филиал CustomAttributes)

        // *** End programmer edit section *** (РабочееМесто.Филиал CustomAttributes)
        [PropertyStorage(new string[] {
                "Филиал"})]
        [NotNull()]
        public virtual IIS.Uchet.Филиал Филиал
        {
            get
            {
                // *** Start programmer edit section *** (РабочееМесто.Филиал Get start)

                // *** End programmer edit section *** (РабочееМесто.Филиал Get start)
                IIS.Uchet.Филиал result = this.fФилиал;
                // *** Start programmer edit section *** (РабочееМесто.Филиал Get end)

                // *** End programmer edit section *** (РабочееМесто.Филиал Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (РабочееМесто.Филиал Set start)

                // *** End programmer edit section *** (РабочееМесто.Филиал Set start)
                this.fФилиал = value;
                // *** Start programmer edit section *** (РабочееМесто.Филиал Set end)

                // *** End programmer edit section *** (РабочееМесто.Филиал Set end)
            }
        }
        
        /// <summary>
        /// Рабочее место.
        /// </summary>
        // *** Start programmer edit section *** (РабочееМесто.Оборудование CustomAttributes)

        // *** End programmer edit section *** (РабочееМесто.Оборудование CustomAttributes)
        public virtual IIS.Uchet.DetailArrayOfОборудование Оборудование
        {
            get
            {
                // *** Start programmer edit section *** (РабочееМесто.Оборудование Get start)

                // *** End programmer edit section *** (РабочееМесто.Оборудование Get start)
                if ((this.fОборудование == null))
                {
                    this.fОборудование = new IIS.Uchet.DetailArrayOfОборудование(this);
                }
                IIS.Uchet.DetailArrayOfОборудование result = this.fОборудование;
                // *** Start programmer edit section *** (РабочееМесто.Оборудование Get end)

                // *** End programmer edit section *** (РабочееМесто.Оборудование Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (РабочееМесто.Оборудование Set start)

                // *** End programmer edit section *** (РабочееМесто.Оборудование Set start)
                this.fОборудование = value;
                // *** Start programmer edit section *** (РабочееМесто.Оборудование Set end)

                // *** End programmer edit section *** (РабочееМесто.Оборудование Set end)
            }
        }
        
        /// <summary>
        /// Рабочее место.
        /// </summary>
        // *** Start programmer edit section *** (РабочееМесто.ПО CustomAttributes)

        // *** End programmer edit section *** (РабочееМесто.ПО CustomAttributes)
        public virtual IIS.Uchet.DetailArrayOfПО ПО
        {
            get
            {
                // *** Start programmer edit section *** (РабочееМесто.ПО Get start)

                // *** End programmer edit section *** (РабочееМесто.ПО Get start)
                if ((this.fПО == null))
                {
                    this.fПО = new IIS.Uchet.DetailArrayOfПО(this);
                }
                IIS.Uchet.DetailArrayOfПО result = this.fПО;
                // *** Start programmer edit section *** (РабочееМесто.ПО Get end)

                // *** End programmer edit section *** (РабочееМесто.ПО Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (РабочееМесто.ПО Set start)

                // *** End programmer edit section *** (РабочееМесто.ПО Set start)
                this.fПО = value;
                // *** Start programmer edit section *** (РабочееМесто.ПО Set end)

                // *** End programmer edit section *** (РабочееМесто.ПО Set end)
            }
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "РабочееМестоE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View РабочееМестоE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("РабочееМестоE", typeof(IIS.Uchet.РабочееМесто));
                }
            }
            
            /// <summary>
            /// "РабочееМестоL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View РабочееМестоL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("РабочееМестоL", typeof(IIS.Uchet.РабочееМесто));
                }
            }
        }
    }
}
